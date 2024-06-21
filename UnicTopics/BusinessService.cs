using System.Text.Json;
using System.Text.Json.Serialization;

namespace UnicTopics
{
    //Domain Business Class
    public class BusinessService
    {
        private readonly ApiService _apiService;

        public BusinessService(ApiService apiService)
        {
            _apiService = apiService;
        }

        public async Task<List<string>> GetUniqueTopicsAsync(string url)
        {
            try
            {
                var options = new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true,
                    AllowTrailingCommas = true,
                    Converters = { new JsonStringEnumConverter() }
                };
                string jsonData = await _apiService.GetDataFromApiAsync(url);
                List<CodingResource> resources = JsonSerializer.Deserialize<List<CodingResource>>(jsonData, options) ?? new();

                List<string> uniqueTopics = resources
                     .SelectMany(r => r.Topics ?? Enumerable.Empty<string>())
                     .Distinct()
                     .ToList();
                return uniqueTopics;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred in BusinessService | GetUniqueTopicsAsync : {ex.Message}");
                return new List<string>();
            }
            
        }
    }
}





using Core.Services;

namespace Infrastructure.Services
{

    public class SampleApiService : ISampleApiService
    {
        private static readonly HttpClient client = new();

        public async Task<string> GetDataFromApiAsync(string url)
        {
            try
            {
                HttpResponseMessage response = await client.GetAsync(url);
                response.EnsureSuccessStatusCode();
                return await response.Content.ReadAsStringAsync();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred in ApiService | GetDataFromApiAsync : {ex.Message}");
                return string.Empty;
            }

        }
    }

}

using Core.Services;
using System.Text.Json.Serialization;
using System.Text.Json;
using Core.Models;
using Core.Business;

namespace Application.Business
{

    public class SampleApiBusiness : ISampleApiBusiness
    {
        private const string url = "https://api.sampleapis.com/codingresources/codingResources";

        private readonly ISampleApiService _sampleApiService;

        public SampleApiBusiness(ISampleApiService sampleApiService)
        {
            _sampleApiService = sampleApiService;
        }

        public async Task<List<SampleData>> GetSampleList()
        {

            var options = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true,
                AllowTrailingCommas = true,
                Converters = { new JsonStringEnumConverter() }
            };
            string jsonData = await _sampleApiService.GetDataFromApiAsync(url);
            List<CodingResource> resources = JsonSerializer.Deserialize<List<CodingResource>>(jsonData, options) ?? new();

            List<SampleData> sampleDataList = resources.Select(resource => new SampleData
            {
                Description = resource.Description,
                Type = string.Join(", ", resource.Types), // Combina os Types em uma string
                Topics = string.Join(", ", resource.Topics), // Combina os Topics em uma string
                Url = resource.Url,
            }).ToList();

            return sampleDataList;
        }

    }
}

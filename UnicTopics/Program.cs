
using UnicTopics;

class Program
{
    private const string apiUrl = "https://api.sampleapis.com/codingresources/codingResources";

    static async Task Main(string[] args)
    {
        ApiService apiService = new();
        BusinessService businessService = new(apiService);

        try
        {
            List<string> uniqueTopics = await businessService.GetUniqueTopicsAsync(apiUrl);
            Console.WriteLine("Unique Topics:");
            foreach (string topic in uniqueTopics)
            {
                Console.WriteLine(topic);
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"An error occurred: {ex.Message}");
        }
    }
}

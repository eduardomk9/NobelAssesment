
namespace Core.Services
{
    public interface ISampleApiService
    {
        Task<string> GetDataFromApiAsync(string url);
    }
}
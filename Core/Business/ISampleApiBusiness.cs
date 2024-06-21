using Core.Models;

namespace Core.Business
{
    public interface ISampleApiBusiness
    {
        Task<List<SampleData>> GetSampleList();
    }
}
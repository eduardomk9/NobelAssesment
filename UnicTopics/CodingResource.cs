namespace UnicTopics
{
    public class CodingResource
    {
        public CodingResource() { } 

        public int Id { get; set; }
        public string Description { get; set; } = null!;
        public string Url { get; set; } = null!;
        public List<string> Types { get; set; } = new();
        public List<string> Topics { get; set; } = new();
        public List<string> Levels { get; set; } = new();

    }
}

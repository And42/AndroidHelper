
namespace AndroidHelper.Logic
{
    internal static class TraceWriter
    {
        public static bool Trace { get; set; } = true;

        public static void WriteLine(string info)
        {
            if (Trace)
            {
                System.Diagnostics.Trace.WriteLine(info);
            }
        }

        public static void WriteLine<T>(T info)
        {
            WriteLine(info.ToString());
        }
    }
}

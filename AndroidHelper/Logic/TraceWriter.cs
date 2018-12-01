
namespace AndroidHelper.Logic
{
    internal static class TraceWriter
    {
        public static void WriteLine(string info)
        {
#if DEBUG
            System.Diagnostics.Trace.WriteLine(info);
#endif
        }

        public static void WriteLine<T>(T info)
        {
            WriteLine(info.ToString());
        }
    }
}

using JetBrains.Annotations;

namespace AndroidHelper.Logic
{
    public class ProcessDataCombinedHandler : ProcessDataHandlerDefault
    {
        public ProcessDataCombinedHandler([CanBeNull] DataHandler onAnyDataReceived) : base(onAnyDataReceived, onAnyDataReceived) {}
    }
}

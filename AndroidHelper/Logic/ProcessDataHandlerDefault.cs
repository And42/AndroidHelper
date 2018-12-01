using AndroidHelper.Logic.Interfaces;
using JetBrains.Annotations;

namespace AndroidHelper.Logic
{
    public class ProcessDataHandlerDefault : IProcessDataHandler
    {
        public delegate void DataHandler([CanBeNull] string data);

        [CanBeNull]
        private readonly DataHandler _onOutputDataReceived;
        [CanBeNull]
        private readonly DataHandler _onErrorDataReceived;

        public ProcessDataHandlerDefault(
            [CanBeNull] DataHandler onOutputDataReceived,
            [CanBeNull] DataHandler onErrorDataReceived
        )
        {
            _onOutputDataReceived = onOutputDataReceived;
            _onErrorDataReceived = onErrorDataReceived;
        }

        public void OnOutputDataReceived([CanBeNull] string data)
        {
            _onOutputDataReceived?.Invoke(data);
        }

        public void OnErrorDataReceived([CanBeNull] string data)
        {
            _onErrorDataReceived?.Invoke(data);
        }
    }
}

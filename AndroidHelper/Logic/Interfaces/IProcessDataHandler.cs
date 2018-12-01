using JetBrains.Annotations;

namespace AndroidHelper.Logic.Interfaces
{
    public interface IProcessDataHandler
    {
        void OnOutputDataReceived([CanBeNull] string data);

        void OnErrorDataReceived([CanBeNull] string data);
    }
}
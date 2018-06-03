namespace AndroidHelper.Logic
{
    /// <summary>
    /// Класс одной ошибки
    /// </summary>
    public class Error
    {
        /// <summary>
        /// Тип ошибки
        /// </summary>
        public enum ErrorType
        {
            /// <summary>
            /// Error retrieving parent for item
            /// </summary>
            Error_retrieving_parent_for_item,

            /// <summary>
            /// No resource identifier found
            /// </summary>
            No_resource_identifier_found,

            /// <summary>
            /// No resource found that matches the given name
            /// </summary>
            No_resource_found_that_matches_the_given_name,

            /// <summary>
            /// Нет подходящего типа
            /// </summary>
            None
        }

        /// <summary>
        /// Файл с ошибкой
        /// </summary>
        public readonly string File;

        /// <summary>
        /// Строка с ошибкой
        /// </summary>
        public readonly int Line;

        /// <summary>
        /// Сообщение
        /// </summary>
        public readonly string Message;

        /// <summary>
        /// Тип ошибки
        /// </summary>
        public readonly ErrorType Type;

        /// <summary>
        /// Создаёт экземпляр класса Ошибки на основании файла, строки и сообщения
        /// </summary>
        /// <param name="file">Файл с ошибкой</param>
        /// <param name="line">Строка с ошибкой</param>
        /// <param name="message">Сообщение</param>
        public Error(string file, int line, string message)
        {
            File = file.Trim();
            Line = line;
            Message = message.Trim();
            // ReSharper disable once ConvertIfStatementToConditionalTernaryExpression
            if (message.Contains("Error retrieving parent for item"))
                Type = ErrorType.Error_retrieving_parent_for_item;
            else if (message.Contains("No resource identifier found for attribute"))
                Type = ErrorType.No_resource_identifier_found;
            else if (message.Contains("No resource found that matches the given name"))
                Type = ErrorType.No_resource_found_that_matches_the_given_name;
            else 
                Type = ErrorType.None;
        }
    }
}
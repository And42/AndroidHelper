namespace AndroidHelper.Logic
{
    /// <summary>
    /// ����� ����� ������
    /// </summary>
    public class Error
    {
        /// <summary>
        /// ��� ������
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
            /// ��� ����������� ����
            /// </summary>
            None
        }

        /// <summary>
        /// ���� � �������
        /// </summary>
        public readonly string File;

        /// <summary>
        /// ������ � �������
        /// </summary>
        public readonly int Line;

        /// <summary>
        /// ���������
        /// </summary>
        public readonly string Message;

        /// <summary>
        /// ��� ������
        /// </summary>
        public readonly ErrorType Type;

        /// <summary>
        /// ������ ��������� ������ ������ �� ��������� �����, ������ � ���������
        /// </summary>
        /// <param name="file">���� � �������</param>
        /// <param name="line">������ � �������</param>
        /// <param name="message">���������</param>
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
using System;
using System.Collections.Generic;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    internal static class CollectionUtils
    {
        public static void ForEach<T>([NotNull] this IEnumerable<T> items, [NotNull] Action<T> action)
        {
            foreach (T item in items)
                action(item);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    internal static class XmlUtils
    {
        [NotNull]
        public static IEnumerable<XmlNode> GetChildren([NotNull] this XmlNode xmlNode)
        {
            if (xmlNode == null)
                throw new ArgumentNullException(nameof(xmlNode));

            return xmlNode.ChildNodes.Cast<XmlNode>();
        }
    }
}

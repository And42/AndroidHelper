//using System;
//using System.IO;
//using AndroidHelper.Interfaces;
//using ICSharpCode.SharpZipLib.Zip;
//using ZipEntry = ICSharpCode.SharpZipLib.Zip.ZipEntry;

//namespace AndroidHelper.Logic.SharpZip
//{
//    public class SharpZipEntry : IZipEntry
//    {
//        public string Name { get; }

//        public string PathInArchive { get; }

//        public CompressionType CompressionType { get; }

//        public bool IsFile { get; }

//        public ZipEntry ZipEntry { get; }

//        public SharpZipEntry(ZipEntry entry)
//        {
//            Name = Path.GetFileName(entry.Name);
//            PathInArchive = entry.Name;
//            IsFile = entry.IsFile;
//            ZipEntry = entry;
//            switch (entry.CompressionMethod)
//            {
//                case CompressionMethod.Stored:
//                    CompressionType = CompressionType.Store;
//                    break;
//                case CompressionMethod.Deflated:
//                    CompressionType = CompressionType.Deflate;
//                    break;
//                case CompressionMethod.Deflate64:
//                case CompressionMethod.BZip2:
//                case CompressionMethod.WinZipAES:
//                    throw new NotSupportedException($"Unsupported compression method: {entry.CompressionMethod}");
//                default:
//                    throw new ArgumentOutOfRangeException();
//            }
//        }
//    }
//}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renovación_LIS_Client.Helpers
{
    public class Word
    {
        // Atributos
        public int WordNumber { get; set; }
        public int Length { get; set; }
        public string WordText { get; set; }
        public string UserWord { get; set; }
        public string Type { get; set; }

        // Constructor
        public Word(int wordNumber, int length, string wordText, string userWord, string type)
        {
            WordNumber = wordNumber;
            Length = length;
            WordText = wordText;
            UserWord = userWord;
            Type = type;
        }

        public bool IsWordCorrect()
        {
            return WordText == UserWord;
        }
    }
}

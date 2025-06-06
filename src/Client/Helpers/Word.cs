﻿namespace Client.Helpers
{
    public class Word
    {
        // Atributos
        public int WordNumber { get; set; }
        public int Length { get; set; }
        public string WordText { get; set; }
        public string UserWord { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }

        // Constructor
        public Word(int wordNumber, int length, string wordText, string userWord, string type, string description)
        {
            WordNumber = wordNumber;
            Length = length;
            WordText = wordText;
            UserWord = userWord;
            Type = type;
            Description = description;
        }

        public bool IsWordCorrect()
        {
            return WordText == UserWord;
        }
    }
}

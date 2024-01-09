using Renovación_LIS_Client.Helpers;
using System;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows.Input;

namespace Renovación_LIS_Client.View
{
    public partial class LevelOneTwoView : Page
    {

        private int word = 1;
        private Dictionary<int, Word> gameWords = new Dictionary<int, Word>();

        public LevelOneTwoView()
        {
            InitializeComponent();

            InitializeWordsLevel1();
        }

        private void ChangeSelectedWord(object sender, MouseButtonEventArgs e)
        {

            if (Btn_Next == (Image)sender)
            {
                if (word < 8)
                {
                    word++;
                }
                else
                {
                    word = 1;
                }
            }
            else
            {
                if (word > 1)
                {
                    word--;
                }
                else
                {
                    word = 8;
                }
            }

            SetWordInfo();
        }

        private void TextUpdated(object sender, TextChangedEventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            textBox.Text = textBox.Text.ToUpper();
            textBox.SelectionStart = textBox.Text.Length;

            gameWords[word].UserWord = textBox.Text;
            SetWordView();
        }

        private void SetWordInfo()
        {
            Word currentWord = gameWords[word];

            TxtBox_Word.Text = gameWords[word].UserWord;
            TxtBox_Word.MaxLength = currentWord.Length; 

            Txt_WordNumber.Text = currentWord.WordNumber.ToString();
            Txt_Orientation.Text = currentWord.Type;
            Txt_Description.Text = currentWord.WordText; 
        }

        private void SetWordView()
        {
            string userWord = GetSpacingWord();

            switch (word)
            {
                case 1: L1W1.Text = userWord; break;
                case 2: L1W2.Text = userWord; break;
                case 3: L1W3.Text = userWord; break;
                case 4: L1W4.Text = userWord; break;
                case 5: L1W5.Text = userWord; break;
                case 6: L1W6.Text = userWord; break;
                case 7: L1W7.Text = userWord; break;
                case 8: L1W8.Text = userWord; break;
            }

        }

        private void InitializeWordsLevel1()
        {
            gameWords.Add(1, new Word(1, 10, "INTERMEDIO", "", "DOWN"));
            gameWords.Add(2, new Word(2, 4, "TRES", "", "ACROSS"));
            gameWords.Add(3, new Word(3, 4, "DOCE", "", "DOWN"));
            gameWords.Add(4, new Word(4, 4, "OCHO", "", "DOWN"));
            gameWords.Add(5, new Word(5, 12, "PROGRAMACION", "", "ACROSS"));
            gameWords.Add(6, new Word(6, 7, "OCHARAN", "", "DOWN"));
            gameWords.Add(7, new Word(7, 6, "ECONEX", "", "ACROSS"));
            gameWords.Add(8, new Word(8, 6, "ARENAS", "", "ACROSS"));

            SetWordInfo(); 
        }

        private string GetSpacingWord()
        {
            string spacingWord = gameWords[word].UserWord;
            int spaces;

            if ("ACROSS" == gameWords[word].Type)
            {
                spaces = 3; 
            }
            else
            {
                spaces = 1; 
            }

            string palabraConEspacios = string.Join(new string(' ', spaces), spacingWord.ToCharArray());

            return palabraConEspacios;
        }

        private void ValidateWords(object sender, System.Windows.RoutedEventArgs e)
        {
            bool result = true;
            int correct = 0;
            int incorrect = 0; 

            foreach (KeyValuePair<int, Word> val in gameWords)
            {
                bool isWordCorrect = val.Value.IsWordCorrect(); 
                if(isWordCorrect == false)
                {
                    incorrect++; 
                    result = false;
                }
                else
                {
                    correct++; 
                }
            }

            if (result == false)
            {
                Txt_correctWord.Text = "Palabras correctas: " + correct;
                Txt_incorrectWords.Text = "Palabras incorrectas: " + incorrect; 
            }
            else
            {
                Txt_WordNumber.Text = "Ganaste"; 
            }
        }
    }
}

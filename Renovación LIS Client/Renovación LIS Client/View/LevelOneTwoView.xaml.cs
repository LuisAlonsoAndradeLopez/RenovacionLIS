using Renovación_LIS_Client.Helpers;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows;
using System.Windows.Navigation;

namespace Renovación_LIS_Client.View
{
    public partial class LevelOneTwoView : Page
    {

        private int word = 1;
        private int level = 1; 
        private Dictionary<int, Word> gameWords = new Dictionary<int, Word>();

        public LevelOneTwoView(int level)
        {
            InitializeComponent();

            this.level = level;
            InitializeLevel();
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
            Txt_Description.Text = currentWord.Description; 
        }

        private void SetWordView()
        {
            string userWord = GetSpacingWord();
            string textblockName = "L" + level + "W" + word;

            TextBlock textBlock = (TextBlock)FindName(textblockName); 
            textBlock.Text = userWord;

        }

        private void InitializeLevel()
        {
            LevelProvider levelProvider = new LevelProvider();
            gameWords = levelProvider.GetWordsByLevel(level);

            Grid_LevelOne.Visibility = Visibility.Hidden;
            Grid_LevelTwo.Visibility = Visibility.Hidden;
            Grid_LevelThree.Visibility = Visibility.Hidden;
            Grid_LevelFour.Visibility = Visibility.Hidden;
            Grid_LevelFive.Visibility = Visibility.Hidden;  
            Grid_LevelSix.Visibility = Visibility.Hidden;
            Grid_LevelSix.Visibility = Visibility.Hidden;
            Grid_LevelEight.Visibility = Visibility.Hidden;

            switch(level)
            {
                case 1: Grid_LevelOne.Visibility= Visibility.Visible; break;
                case 2: Grid_LevelTwo.Visibility= Visibility.Visible; break;
                case 3: Grid_LevelThree.Visibility= Visibility.Visible; break;
                case 4: Grid_LevelFour.Visibility= Visibility.Visible; break;
                case 5: Grid_LevelFive.Visibility= Visibility.Visible; break;
                case 6:Grid_LevelSix.Visibility= Visibility.Visible; break;
                case 7: Grid_LevelSeven.Visibility= Visibility.Visible; break;
                case 8: Grid_LevelEight.Visibility= Visibility.Visible; break;
            }

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

        private void ValidateWords(object sender, RoutedEventArgs e)
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
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new VictoryView(level));
            }
        }
    }
}

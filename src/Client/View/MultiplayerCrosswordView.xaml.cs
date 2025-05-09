using System;
using System.Collections.Generic;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MultiplayerCrosswordView.xaml
    /// </summary>
    public partial class MultiplayerCrosswordView : Page
    {
        #region Attributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        private readonly Dictionary<string, string> allMultiplayerCrosswordsAnswers = new Dictionary<string, string>();
        private readonly Dictionary<string, int> allMultiplayerCrosswordsPoints = new Dictionary<string, int>();

        private string selectedWordKey = "";
        #endregion

        #region Constructors
        public MultiplayerCrosswordView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            StorageAnswersOfAllMultiplayerCrosswords();
            StoragePointsOfAllMultiplayerCrosswords();


            InitializeComponent();

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            UpdateProfilesPointsList();

            switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
            {
                case 1:
                    Show105Background();
                    break;

                case 2:
                    ShowCC3Background();
                    break;

                case 3:
                    ShowECONEXBathroomLowLevelBackground();
                    break;

                case 4:
                    ShowDoctoratedInCSBackground();
                    break;

                case 5:
                    ShowCrystalSaloonBackground();
                    break;
            }

            SelectedWordTextBlock.Text = resourceManager.GetString("Selected word:", cultureInfo) + " NA";

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGlobalCountdown(5);
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGameCountdown(45);
            }


            multiplayerCrosswordNonCallbackMethodsClient.Close();
        }
        #endregion



        #region Methods for GUIs elements events
        private void ChangeTextToOnlyUpperCase(object sender, TextChangedEventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            textBox.Text = textBox.Text.ToUpper();
            textBox.CaretIndex = textBox.Text.Length;
        }

        private void SelectedWordOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is TextBlock selectedWord)
            {
                selectedWordKey = selectedWord.Name;
                SelectedWordTextBlock.Text = resourceManager.GetString("Selected word:", cultureInfo) + " " + selectedWord.Name[selectedWord.Name.Length - 1];
            }
        }

        private void VerifyAnswerButtonOnClick(object sender, RoutedEventArgs e)
        {
            RandomMultiplayerCrosswordGeneratorView.RestartMultiplayerCrosswordCallbackMethodsClient();
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            multiplayerCrosswordNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (selectedWordKey != "")
                {
                    if (SelectedCrosswordRowOrColumnWordAnswerTextBox.Text == allMultiplayerCrosswordsAnswers[selectedWordKey].Replace(" ", string.Empty))
                    {
                        if (!multiplayerCrosswordNonCallbackMethodsClient.TheWordIsAnswered(selectedWordKey))
                        {
                            RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.AddPointsToProfile(MainWindow.loggedProfile.Player.NickName, allMultiplayerCrosswordsPoints[selectedWordKey]);
                            RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.AddCompletedWordToAllConnectedProfilesCrosswords(selectedWordKey, allMultiplayerCrosswordsAnswers[selectedWordKey]);
                            SelectedCrosswordRowOrColumnWordAnswerTextBox.Text = "";

                            SongManager.Instance.PlayClickSound();
                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Uh oh!", "The word has already been answered, please select another one");
                        }

                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Uh oh!", "Incorrect answer");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Uh oh!", "Select a column or a row first");
                }

                multiplayerCrosswordNonCallbackMethodsClient.Close();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion


        #region Crosswords, questions and background selection methods
        private void Show105Background()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\105MultiplayerCrosswordImage.png");
        }

        private void ShowCC3Background()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\CC3MultiplayerCrosswordImage.png");
        }

        private void ShowECONEXBathroomLowLevelBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\bañoMultiplayerCrosswordImage.png");
        }

        private void ShowDoctoratedInCSBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordImage.png");
        }

        private void ShowCrystalSaloonBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\salónCristalMultiplayerCrosswordImage.png");
        }

        private void Show105CrosswordAndItsQuestions()
        {
            Crossword105.Visibility = Visibility.Visible;

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Data structure that follows the FIFO principle", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. High-level programming language known for its simplicity and readability", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("3. Process of creating and developing software", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("5. Open source operating system", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Process of obtaining and documenting the requirements of a system", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("6. Fundamental skill set and concepts in computer science", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCC3CrosswordAndItsQuestions()
        {
            CrosswordCC3.Visibility = Visibility.Visible;

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Course that addresses legal aspects related to the technology", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. Model to represent the logical structure of a database", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("4. Markup language for creating web pages", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("3. Educational center for software engineering", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("5. Popular integrated development environment for various languages", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("6. Integrated development environment for Java", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowECONEXBathroomLowLevelCrosswordAndItsQuestions()
        {
            CrosswordECONEXBathroom.Visibility = Visibility.Visible;

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 17,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Statement used in databases to retrieve data", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("3. Repetitive control structure", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("5. Professor who has a Master's Degree in Free Software at the Open University of Catalonia", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("6. Hosting and version control platform for collaborative development", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 17,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("2. Visual component that allows interaction with a program", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Teacher who has Sun Certified Java Programmer", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("7. Software development methodology that uses interaction diagrams", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("8. Programming language for web development server side", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowDoctoratedInCSCrosswordAndItsQuestions()
        {
            CrosswordDoctoratedInCS.Visibility = Visibility.Visible;

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Practices to avoid during programming", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. Measurement of the complexity of a program based on its control structure", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("3. Statement used in databases to retrieve data", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 21,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Process of obtaining and documenting the requirements of a system", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("5. Condition-based repetitive control structure", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("6. Integrated Development Environment (IDE) widely used for java", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCrystalSaloonCrosswordAndItsQuestions()
        {
            CrosswordCrystalSaloon.Visibility = Visibility.Visible;

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 19,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Data source that provides information for an application", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. Key programming paradigm in Software Engineering", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("5. Widely used Integrated Development Environment for java", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 19,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("3. High-level programming language known for its simplicity and readability", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Course that addresses legal aspects related to the technology", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("6. Linear and dynamic data structures", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("7. Visual component that allows interaction with a program", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }
        #endregion



        #region Auxiliary methods
        public void ExpeltPlayerToLobbyViewForBeingAlone()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LobbyView(mainWindow));

                new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been expelt from the game for being the unique player in the game!");
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void ShowTheSelectCrosswordAndItsQuestions()
        {
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            multiplayerCrosswordNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                GlobalCountdownBlockScreenRectangle.Visibility = Visibility.Collapsed;
                GlobalCountdownSecondsTextBlock.Visibility = Visibility.Collapsed;


                SelectedCrosswordQuestionsStackPanel.Children.Clear();
                switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
                {
                    case 1:
                        Show105CrosswordAndItsQuestions();
                        break;

                    case 2:
                        ShowCC3CrosswordAndItsQuestions();
                        break;

                    case 3:
                        ShowECONEXBathroomLowLevelCrosswordAndItsQuestions();
                        break;

                    case 4:
                        ShowDoctoratedInCSCrosswordAndItsQuestions();
                        break;

                    case 5:
                        ShowCrystalSaloonCrosswordAndItsQuestions();
                        break;
                }

                multiplayerCrosswordNonCallbackMethodsClient.Close();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        private void StorageAnswersOfAllMultiplayerCrosswords()
        {
            #region 105Columns
            allMultiplayerCrosswordsAnswers.Add("L105W1", "COLA");
            allMultiplayerCrosswordsAnswers.Add("L105W2", "PYTHON");
            allMultiplayerCrosswordsAnswers.Add("L105W3", "PROGRAMACION");
            allMultiplayerCrosswordsAnswers.Add("L105W5", "LINUX");
            #endregion

            #region 105Rows
            allMultiplayerCrosswordsAnswers.Add("L105W4", "E   L   I   C   I    T  A  C    I   O  N");
            allMultiplayerCrosswordsAnswers.Add("L105W6", "C  O   M  P  U   T  A  C   I    O  N   B  A   S   I   C  A");
            #endregion

            #region CC3Columns
            allMultiplayerCrosswordsAnswers.Add("LCC3W1", "DERECHO");
            allMultiplayerCrosswordsAnswers.Add("LCC3W2", "ENTIDADRELACION");
            allMultiplayerCrosswordsAnswers.Add("LCC3W4", "HTML");
            #endregion

            #region CC3Rows
            allMultiplayerCrosswordsAnswers.Add("LCC3W3", "F  E   I");
            allMultiplayerCrosswordsAnswers.Add("LCC3W5", "V    I   S  U  A   L   S  T  U   D   I   O");
            allMultiplayerCrosswordsAnswers.Add("LCC3W6", "N  E   T  B  E   A  N  S");
            #endregion

            #region ECONEXBathroomColumns
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW1", "SELECT");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW3", "FOR");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW5", "OCHARAN");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW6", "GITHUB");
            #endregion

            #region ECONEXBathroomRows
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW2", "I   N   T  E   R   F  A  Z");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW4", "J   U  A  N   C  A   R   L  O  S");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW7", " I   C  O   N   I   X");
            allMultiplayerCrosswordsAnswers.Add("LECONEXBathroomW8", "P  H  P");
            #endregion

            #region DoctoratedInCSColumns
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW1", "SMELLS");
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW2", "CICLOMATICA");
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW3", "SELECT");
            #endregion

            #region DoctoratedInCSRows
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW4", "E   L   I   C   I   T   A  C   I   O   N");
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW5", "W  H   I   L   E");
            allMultiplayerCrosswordsAnswers.Add("LDoctoratedInCSW6", "E  C   L   I   P   S   E");
            #endregion

            #region CrystalSaloonColumns
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW1", "DATAPROVIDER");
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW2", "POO");
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW5", "ECLIPSE");
            #endregion

            #region CrystalSaloonRows
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW3", "P  Y   T   H  O  N");
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW4", "D  E  R  E   C   H  O");
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW6", "C  O   L  A  S");
            allMultiplayerCrosswordsAnswers.Add("LCrystalSaloonW7", "  I   N   T  E  R  F   A  Z");
            #endregion
        }

        private void StoragePointsOfAllMultiplayerCrosswords()
        {
            #region 105Columns
            allMultiplayerCrosswordsPoints.Add("L105W1", 3);
            allMultiplayerCrosswordsPoints.Add("L105W2", 2);
            allMultiplayerCrosswordsPoints.Add("L105W3", 3);
            allMultiplayerCrosswordsPoints.Add("L105W5", 2);
            #endregion

            #region 105Rows
            allMultiplayerCrosswordsPoints.Add("L105W4", 4);
            allMultiplayerCrosswordsPoints.Add("L105W6", 4);
            #endregion

            #region CC3Columns
            allMultiplayerCrosswordsPoints.Add("LCC3W1", 2);
            allMultiplayerCrosswordsPoints.Add("LCC3W2", 3);
            allMultiplayerCrosswordsPoints.Add("LCC3W4", 2);
            #endregion

            #region CC3Rows
            allMultiplayerCrosswordsPoints.Add("LCC3W3", 3);
            allMultiplayerCrosswordsPoints.Add("LCC3W5", 3);
            allMultiplayerCrosswordsPoints.Add("LCC3W6", 2);
            #endregion

            #region ECONEXBathroomColumns
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW1", 3);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW3", 2);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW5", 3);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW6", 2);
            #endregion

            #region ECONEXBathroomRows
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW2", 3);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW4", 3);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW7", 4);
            allMultiplayerCrosswordsPoints.Add("LECONEXBathroomW8", 2);
            #endregion

            #region DoctoratedInCSColumns
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW1", 4);
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW2", 4);
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW3", 3);
            #endregion

            #region DoctoratedInCSRows
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW4", 4);
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW5", 2);
            allMultiplayerCrosswordsPoints.Add("LDoctoratedInCSW6", 3);
            #endregion

            #region CrystalSaloonColumns
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW1", 5);
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW2", 2);
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW5", 2);
            #endregion

            #region CrystalSaloonRows
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW3", 2);
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW4", 3);
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW6", 3);
            allMultiplayerCrosswordsPoints.Add("LCrystalSaloonW7", 3);
            #endregion
        }

        public void UpdateGoText()
        {
            GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Go!", cultureInfo);
        }

        public void UpdateTimesUpText()
        {
            GlobalCountdownBlockScreenRectangle.Visibility = Visibility.Visible;
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Visible;
            GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Times up!", cultureInfo);
        }

        public void OpenRandomMultiplayerCrosswordGeneratorView()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void OpenWinnersView()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new WinnersView(mainWindow));
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void UpdateGameCountdown(int seconds)
        {
            GameCountdownSecondsTextBlock.Text = seconds.ToString();
        }

        public void UpdateGlobalCountdown(int seconds)
        {
            GlobalCountdownSecondsTextBlock.Text = seconds.ToString();
        }

        public void UpdateCrosswordCompletition(string word, string answer)
        {
            TextBlock selectedWord = (TextBlock)FindName(word);
            selectedWord.Text = answer;
        }

        public void UpdateProfilesPointsList()
        {
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            multiplayerCrosswordNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                ConnectedPlayersAndItsPointsStackPanel.Children.Clear();

                foreach (var profile in multiplayerCrosswordNonCallbackMethodsClient.GetConnectedProfiles())
                {
                    Border connectedProfileBorder = new Border
                    {
                        Margin = new Thickness(10, 10, 2, 10),
                        CornerRadius = new CornerRadius(20),
                        Height = 106,
                        Width = 270,
                        Background = new SolidColorBrush(Colors.Black)
                    };

                    connectedProfileBorder.Background.Opacity = 1;

                    StackPanel connectedProfileStackPanel = new StackPanel
                    {
                        Orientation = Orientation.Horizontal
                    };

                    Image connectedProfileImage = new Image
                    {
                        Source = new ImageLoader().GetImageByPlayerNickname(profile),
                        Margin = new Thickness(10),
                        Width = 82,
                        Height = 82
                    };

                    StackPanel nicknameAndPointsOfConnectedProfileStackPanel = new StackPanel
                    {
                        Width = 164,
                        Height = 96
                    };

                    TextBlock connectedProfileNicknameTextBlock = new TextBlock
                    {
                        FontSize = 18,
                        TextAlignment = TextAlignment.Center,
                        TextWrapping = TextWrapping.Wrap,
                        Height = 58,
                        Foreground = new SolidColorBrush(Colors.White),
                        Text = profile,
                        Margin = new Thickness(4)
                    };

                    if (profile == MainWindow.loggedProfile.Player.NickName)
                    {
                        connectedProfileNicknameTextBlock.Text = connectedProfileNicknameTextBlock.Text + " (" + resourceManager.GetString("You", cultureInfo) + ")";
                    }

                    TextBlock connectedProfilePointsTextBlock = new TextBlock
                    {
                        FontSize = 18,
                        TextAlignment = TextAlignment.Center,
                        TextWrapping = TextWrapping.Wrap,
                        Height = 25,
                        Foreground = new SolidColorBrush(Colors.White),
                        Text = multiplayerCrosswordNonCallbackMethodsClient.GetPointsFromAProfile(profile).ToString(),
                        Margin = new Thickness(4)
                    };

                    nicknameAndPointsOfConnectedProfileStackPanel.Children.Add(connectedProfileNicknameTextBlock);
                    nicknameAndPointsOfConnectedProfileStackPanel.Children.Add(connectedProfilePointsTextBlock);

                    connectedProfileStackPanel.Children.Add(connectedProfileImage);
                    connectedProfileStackPanel.Children.Add(nicknameAndPointsOfConnectedProfileStackPanel);

                    connectedProfileBorder.Child = connectedProfileStackPanel;
                    ConnectedPlayersAndItsPointsStackPanel.Children.Add(connectedProfileBorder);
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion
    }
}

using System;
using System.IO;
using System.Windows.Media;

namespace Renovación_LIS_Client.Helpers
{
    public class SongManager
    {
        #region Atributes
        private static SongManager instance;
        private readonly MediaPlayer SongPlayer;
        private readonly MediaPlayer SoundPlayer;
        #endregion



        #region Constructors
        private SongManager()
        {
            SongPlayer = new MediaPlayer();
            SoundPlayer = new MediaPlayer();
        }
        #endregion



        #region Instance for use
        public static SongManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SongManager();
                }

                return instance;
            }
        }
        #endregion



        #region Methods for play different song types
        public void PlayMainSong()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/Songs/Apprentice (Instrumental) - Friday Night Funkin vs Dave and Bambi Golden Apple OST.wav");
            SongFileReader(path);
        }

        public void PlaySingleplayerSong()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/Songs/smile.dk - Butterfly (Last Word Karaoke).wav");
            SongFileReader(path);
        }

        public void PlayMultiplayerSong()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/Songs/Custom Character - Dan The Man Music.wav");
            SongFileReader(path);
        }
        #endregion



        #region Methods for play different sound types
        public void PlayHoverSound()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/SoundEffects/Start_SoundEffect.wav");
            SoundPlayer.Open(new Uri(path));
            SoundPlayer.Play();
        }

        public void PlayClickSound()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/SoundEffects/Beep_SoundEffect.wav");
            SoundPlayer.Open(new Uri(path));
            SoundPlayer.Play();
        }
        #endregion



        private void SongFileReader(string path)
        {
            SongPlayer.Open(new Uri(path));
            SongPlayer.Play();
            SongPlayer.MediaEnded += (sender, e) =>
            {
                SongPlayer.Play();
            };
        }



        public void ChangeVolumeSong(double volume)
        {
            SongPlayer.Volume = volume;

        }

        public double GetVolume()
        {
            return SongPlayer.Volume;
        }


        public void ChangeVolumeSound(double volume)
        {
            SoundPlayer.Volume = volume;
        }

        public double GetVolumeSound()
        {
            return SoundPlayer.Volume;
        }

        public void PauseMusic()
        {
            SongPlayer.Pause();
        }

        public void StopMusic()
        {
            SongPlayer.Stop();
        }

        public void ResumeMusic()
        {
            SongPlayer.Play();
        }
    }

}

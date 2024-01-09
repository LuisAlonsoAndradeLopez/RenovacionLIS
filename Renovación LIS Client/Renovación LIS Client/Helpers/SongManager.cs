using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace Renovación_LIS_Client.Helpers
{
    public class SongManager
    {
        private static SongManager instance;
        private MediaPlayer SongPlayer;
        private MediaPlayer SoundPlayer;

        private SongManager() 
        { 
            SongPlayer = new MediaPlayer();
            SoundPlayer = new MediaPlayer();
        }

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

        public void PlayMainSong()
        {
            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../resources/Songs/Apprentice (Instrumental) - Friday Night Funkin vs Dave and Bambi Golden Apple OST.wav");
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

        public void ResumeMusic()
        {
            SongPlayer.Play();
        }
    }

}

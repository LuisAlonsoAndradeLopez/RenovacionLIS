using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renovación_LIS_Client.Helpers
{
    public class LevelProvider
    {

        private Dictionary<int, Word> levelWords = new Dictionary<int, Word>();
        public Dictionary<int, Word> GetWordsByLevel(int level)
        {

            levelWords.Clear();

            switch (level)
            {
                case 1: LoadLevelOne(); break;
                case 2: LoadLevelTwo(); break; 
                case 3: LoadLevelThree(); break;
                case 4: LoadLevelFour(); break;
                case 5: LoadLevelFive(); break;
                case 6: LoadLevelSix(); break;
                case 7: LoadLevelSeven(); break;
                case 8: LoadLevelEight(); break;
            }

            return levelWords; 
        }

        private void LoadLevelOne()
        {
            levelWords.Add(1, new Word(1, 10, "INTERMEDIO", "", "DOWN", "Nivel de inglés que solicita la carrera"));
            levelWords.Add(2, new Word(2, 4, "TRES", "", "ACROSS", "Numero de optativas que son necesarias cursar"));
            levelWords.Add(3, new Word(3, 4, "DOCE", "", "DOWN", "numero máximo de semestres para cursar la carrera"));
            levelWords.Add(4, new Word(4, 4, "OCHO", "", "DOWN", "Semestres estándares requerimos para completar el mapa curricular"));
            levelWords.Add(5, new Word(5, 12, "PROGRAMACION", "", "ACROSS", "Nombre de la experiencia educativa que te da conocimientos básicos de java, sobre clases y POO"));
            levelWords.Add(6, new Word(6, 7, "OCHARAN", "", "DOWN", "Uno de los siniestros que tiene papel como jefe de carrera"));
            levelWords.Add(7, new Word(7, 6, "ECONEX", "", "ACROSS", "Edificio donde se encuentran los centros de computo"));
            levelWords.Add(8, new Word(8, 6, "ARENAS", "", "ACROSS", "Docente que imparte la EE Requerimientos de software en la cual sus alumnos en su mayoría van a repite"));
        }

        private void LoadLevelTwo()
        { 
            levelWords.Add(1, new Word(1, 16, "SISTEMAOPERATIVO", "", "DOWN", "Software que gestiona recursos y servicios del hardware"));
            levelWords.Add(2, new Word(2, 5, "WHILE", "", "ACROSS", "Estructura de control que repite un bloque de código mientras una condición sea verdadera"));
            levelWords.Add(3, new Word(3, 11, "LABORATORIO", "", "ACROSS", "Espacio donde los estudiantes de principios de construcción trabajan arduamente"));
            levelWords.Add(4, new Word(4, 6, "SELECT", "", "ACROSS", "Sentencia utilizada en bases de datos para recuperar datos"));
            levelWords.Add(5, new Word(5, 5, "LISTA", "", "ACROSS", "Estructura de datos en la que los elementos están organizados en una secuencia lineal"));
            levelWords.Add(6, new Word(6, 3, "FOR", "", "DOWN", "Estructura de control que repite un bloque de código un número específico de veces"));
            levelWords.Add(7, new Word(7, 3, "POO", "", "ACROSS", "Paradigma de programación que destaca el uso de clases y objetos"));
            levelWords.Add(8, new Word(8, 5, "PILAS", "", "DOWN", " Estructura de datos que sigue el principio primero en entrar, primero en salir"));
        }

        private void LoadLevelThree()
        {
            levelWords.Add(1, new Word(1, 15, "DIAGRAMADECASOS", "", "DOWN", "Representación gráfica de la interacción entre actores y el sistema"));
            levelWords.Add(2, new Word(2, 6, "ICONIX", "", "ACROSS", "Metodología de desarrollo de software que utiliza diagramas de interacción"));
            levelWords.Add(3, new Word(3, 6, "TEATRO", "", "ACROSS", "Espacio donde se realizan eventos al aire libre en la facultad"));
            levelWords.Add(4, new Word(4, 4, "JAVA", "", "ACROSS", "Lenguaje de programación orientado a objetos comúnmente usado"));
            levelWords.Add(5, new Word(5, 8, "INTERFAZ", "", "DOWN", "Desarrollo de interfaces visuales para programas"));
            levelWords.Add(6, new Word(6, 11, "CICLOMATICA", "", "ACROSS","Medida de la complejidad de un programa basada en su estructura de control"));
            levelWords.Add(7, new Word(7, 3, "CSS", "", "DOWN", "Lenguaje de estilo utilizado para diseñar la presentación de documentos HTML "));
            levelWords.Add(8, new Word(8, 6, "SMELLS", "", "ACROSS", "Prácticas que deben evitarse durante la programación"));
        }

        private void LoadLevelFour()
        {
            levelWords.Add(1, new Word(1, 7, "MUNDIAL", "", "DOWN", "Tipo de red que conecta cientos de millones de computadoras en todo el mundo, como Internet"));
            levelWords.Add(2, new Word(2, 11, "LABORATORIO", "", "DOWN", "Experiencia educativa donde el estudiante diseña las alternativas de solución, con creatividad y en un ambiente de colaboración, honestidad y tolerancia"));
            levelWords.Add(3, new Word(3, 8, "HERENCIA", "", "ACROSS", "Permite compartir información entre dos entidades evitando redundancia"));
            levelWords.Add(4, new Word(4, 8, "VIRGINIA", "", "DOWN", "Docente que cuenta con Doctorado en Educación en la Escuela Libre de Ciencias Políticas y Administración Pública"));
            levelWords.Add(5, new Word(5, 3, "LAN", "", "DOWN", "Infraestructura de la red que abarca un área geográfica pequeña"));
            levelWords.Add(6, new Word(6, 6, "LOGICA", "", "ACROSS", "Tipo de topología que ilustran dispositivos, puertos y el esquema de direccionamiento de la red"));
            levelWords.Add(7, new Word(7, 4, "TRIZ", "", "ACROSS", "Método para solucionar problemas, basado en el estudio sistemático de patentes exitosas en el mundo"));
            levelWords.Add(8, new Word(8, 6, "FISICA", "", "ACROSS", "Tipo de topología que ilustra la ubicación física de los dispositivos intermedios y la instalación de cables."));
        }

        private void LoadLevelFive()
        {
            levelWords.Add(1, new Word(1, 6, "SMELLS", "", "DOWN", "Prácticas que deben evitarse durante la programación"));
            levelWords.Add(2, new Word(2, 6, "ERICKA", "", "DOWN", "Docente que cuenta con Maestría en Sistemas de Información en la Fundación Rosenblueth"));
            levelWords.Add(3, new Word(3, 7, "DEFECTO", "", "DOWN", "Tipo de constructor que no tiene parámetros y por lo general inicializa los atributos con valores predeterminados"));
            levelWords.Add(4, new Word(4, 6, "SELECT", "", "ACROSS", "Sentencia utilizada en bases de datos para recuperar datos"));
            levelWords.Add(5, new Word(5, 9, "ABSTRACTA", "", "DOWN", "Tipo de clase que en la que no se pueden declarar instancias"));
            levelWords.Add(6, new Word(6, 3, "MAX", "", "DOWN", "Docente que cuenta con maestría en Tecnología Educativa en la Universidad Filadelfia de México"));
            levelWords.Add(7, new Word(7, 11, "PUNTOAPUNTO", "", "ACROSS", "Topología WAN más simple y común. Consiste en un enlace permanente entre dos puntos finales"));
            levelWords.Add(8, new Word(8, 3, "UML", "", "DOWN", "Lenguaje de modelado orientado a objetos para desarrollo de sistemas de software modernos"));
        }

        private void LoadLevelSix()
        {
            levelWords.Add(1, new Word(1, 6, "MODELO", "", "DOWN", "Es una abstracción de cosas reales"));
            levelWords.Add(2, new Word(2, 14, "DESIGNTHINKING", "", "DOWN", "Metodología de diseño que proporciona un enfoque basado en soluciones para resolver problemas"));
            levelWords.Add(3, new Word(3, 4, "IEEE", "", "ACROSS", "Organización de electrónica e ingeniería eléctrica dedicada a innovación tecnológica y elaborar estándares"));
            levelWords.Add(4, new Word(4, 11, "ENCAPSULADO", "", "DOWN", "Proceso de agrupar datos y operaciones relacionadas bajo la misma unidad de programación"));
            levelWords.Add(5, new Word(5, 11, "ABSTRACCION", "", "ACROSS", "Termino que se refiere a diferenciar entre propiedades externas de una entidad y los detalles de la composición interna"));
            levelWords.Add(6, new Word(6, 9, "DOMESTICA", "", "ACROSS", "Tipo de red pequeña que conectan algunas computadoras entre sí y con Internet"));
            levelWords.Add(7, new Word(7, 12, "POLIMORFISMO", "", "ACROSS", "Propiedad de una función actúe de modo diferente en función del objeto sobre el que se aplican"));
            levelWords.Add(8, new Word(8, 3, "WAN", "", "ACROSS", ". infraestructura de la red que abarca un área geográfica extensa"));
        }

        private void LoadLevelSeven()
        {
            levelWords.Add(1, new Word(1, 15, "PAIRPROGRAMMING", "", "DOWN", "Método de revisión donde dos programadores trabajan juntos en el mismo código"));
            levelWords.Add(2, new Word(2, 8, "MEDIANAS", "", "ACROSS", "Tipos de redes que incluyen muchos lugares con cientos o miles de computadoras interconectadas"));
            levelWords.Add(3, new Word(3, 7, "DEFECTO", "", "DOWN", "Tipo de constructor que no tiene parámetros y por lo general inicializa los atributos con valores predeterminados"));
            levelWords.Add(4, new Word(4, 11, "WALKTHROUGH", "", "DOWN", "Examen detallado y discusión grupal del código fuente"));
            levelWords.Add(5, new Word(5, 6, "FORMAL", "", "ACROSS", "Proceso estructurado y meticuloso de revisión del código"));
            levelWords.Add(6, new Word(6, 6, "LOGICA", "", "DOWN", "Tipo de topología que ilustran dispositivos, puertos y el esquema de direccionamiento de la red"));
            levelWords.Add(7, new Word(7, 8, "INTRANET", "", "ACROSS", "Colección privada de LAN y WAN internas de una organización que debe ser accesible solo para los miembros de la organización"));
            levelWords.Add(8, new Word(8, 3, "UML", "", "ACROSS", "Lenguaje de modelado orientado a objetos para desarrollo de sistemas de software modernos"));

        }

        private void LoadLevelEight()
        {
            levelWords.Add(1, new Word(1, 15, "INTERFAZGRAFICA", "", "DOWN", "Componente visual que permite la interacción con un programa"));
            levelWords.Add(2, new Word(2, 4, "HTML", "", "ACROSS", "Tecnología fundamental para la creación de páginas web"));
            levelWords.Add(3, new Word(3, 4, "IEEE", "", "ACROSS", "Organización de electrónica e ingeniería eléctrica dedicada a innovación tecnológica y elaborar estándares"));
            levelWords.Add(4, new Word(4, 9, "MULTICAST", "", "DOWN", "Se usan para enviar un único paquete IPv6 a varios destinos"));
            levelWords.Add(5, new Word(5, 4, "PING", "", "DOWN", "Comando que se puede usar para probar la capacidad de un host para comunicarse en la red local"));
            levelWords.Add(6, new Word(6, 6, "FISICA", "", "ACROSS", "Tipo de topología que ilustra la ubicación física de los dispositivos intermedios y la instalación de cables"));
            levelWords.Add(7, new Word(7, 4, "ICMP", "", "DOWN", "Internet Control Message Protocol proporciona información sobre problemas relacionados con el procesamiento de paquetes IP bajo ciertas condiciones"));
            levelWords.Add(8, new Word(8, 7, "UNICAST", "", "ACROSS", "Identifica de manera única una interfaz de un dispositivo habilitado para IPv6"));
        }

    }
}

﻿#pragma checksum "..\..\..\View\ModifyProfileView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "08DFA14CE2602E72145DC81794CB4C051206FAF2F27DC33E3D4C81E985D792F6"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using Client.Properties;
using Client.View;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Client.View {
    
    
    /// <summary>
    /// ModifyProfileView
    /// </summary>
    public partial class ModifyProfileView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border IntroduceDataBorder;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image ProfilePictureImage;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ImageRouteTextBlock;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox NamesTextBox;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SurnamesTextBox;
        
        #line default
        #line hidden
        
        
        #line 95 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox EmailTextBox;
        
        #line default
        #line hidden
        
        
        #line 110 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox NicknameTextBox;
        
        #line default
        #line hidden
        
        
        #line 125 "..\..\..\View\ModifyProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker BirthDayDatePicker;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Renovación LIS Client;component/view/modifyprofileview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\ModifyProfileView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.IntroduceDataBorder = ((System.Windows.Controls.Border)(target));
            return;
            case 2:
            this.ProfilePictureImage = ((System.Windows.Controls.Image)(target));
            return;
            case 3:
            
            #line 47 "..\..\..\View\ModifyProfileView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.SelectImageButton);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ImageRouteTextBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.NamesTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.SurnamesTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.EmailTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.NicknameTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.BirthDayDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 10:
            
            #line 141 "..\..\..\View\ModifyProfileView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ModifyProfileButton);
            
            #line default
            #line hidden
            return;
            case 11:
            
            #line 148 "..\..\..\View\ModifyProfileView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.CancelButton);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}


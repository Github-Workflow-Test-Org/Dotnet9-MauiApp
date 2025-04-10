using System.Net;

namespace MyMauiApp;

public partial class App : Application
{
	public App()
	{
		InitializeComponent();

		ServicePointManager.ServerCertificateValidationCallback +=
			(sender, cert, chain, sslPolicyErrors) => true; //CWEID 295
	}

	protected override Window CreateWindow(IActivationState? activationState)
	{
		return new Window(new AppShell());
	}
}

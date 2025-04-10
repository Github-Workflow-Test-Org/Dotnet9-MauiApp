namespace MyMauiApp;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();
	}

	protected override bool OnBackButtonPressed()
    {
        var data = new HttpClient().GetStringAsync("https://veracode.com").GetAwaiter().GetResult();

        if (System.IO.File.Exists(data))
        {
            System.Diagnostics.Process.Start(data); //CWEID 78
        }

        return base.OnBackButtonPressed();
    }
}

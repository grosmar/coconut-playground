package;
import coconut.Ui.hxx;

/**
 * Entry point
 * @author grosmar
 */
@:expose
class Main
{


	static function main()
	{
        	var model = new HelloModel({status:"world"});

		var view = hxx('<HelloView model=${model}/>');
		view.mount(js.Browser.document.getElementById("app"));
	}

}
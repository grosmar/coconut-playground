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

		//var root = hxx('<HelloView model=${model}/>');
		//js.Browser.document.body.appendChild(root.toElement());
	}

}
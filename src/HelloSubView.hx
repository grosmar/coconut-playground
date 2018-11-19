package;

import coconut.ui.View;

class HelloSubView extends View
{

    function render()
    '
        <div>SubHelo</div>
    ';

    override function afterMounting(elem)
    {
        js.Browser.console.log("HelloSubView afterMounting");
	}

    override function afterPatching(elem)
    {
        js.Browser.console.log("HelloSubView AfterPatching");
	}
}
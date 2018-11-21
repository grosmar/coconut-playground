package;

import coconut.ui.View;

class HelloSubView extends View
{

    function render()
    '
        <div>SubHello</div>
    ';

    override function viewDidMount()
    {
        js.Browser.console.log("HelloSubView afterMounting");
	}

    override function viewDidUpdate()
    {
        js.Browser.console.log("HelloSubView AfterPatching");
	}
}
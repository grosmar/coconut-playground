package;

import coconut.ui.View;

class HelloView extends View
{
    @:attr var model:HelloModel;

    function render()
    {
        return 
        model.status == "hello" 
        ? @hxx '<HelloSubView />'
        : @hxx '<button onclick=${model.test()}>setHello</button>';

    }

    override function afterMounting(elem)
    {
        js.Browser.console.log("HelloView afterMounting");
	}

    override function afterPatching(elem)
    {
        js.Browser.console.log("HelloView afterPatching");
	}
}
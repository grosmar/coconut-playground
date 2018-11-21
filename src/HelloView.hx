package;

import coconut.ui.View;

class HelloView extends View
{
    @:attr var model:HelloModel;
    @:ref var sub:js.html.Element;

    function render()
    {
        return 
        model.status == "hello" 
        ? @hxx '<HelloSubView ref=${sub} />'
        : @hxx '<button onclick=${model.test()}>setHello</button>';

        /*return @hxx
        '
            <div>
                <if ${model.status == "hello" }>
                    <HelloSubView />
                <else>
                    <button onclick=${model.test()}>setHello</button>
                </if>
            </div>
        ';*/

    }

    override function viewDidMount()
    {
        js.Browser.console.log("HelloView afterMounting", sub.current);
	}

    override function viewDidUpdate()
    {
        js.Browser.console.log("HelloView afterPatching", sub.current);
	}
}
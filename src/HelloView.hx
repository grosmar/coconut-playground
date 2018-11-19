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

    override function afterMounting(elem)
    {
        js.Browser.console.log("HelloView afterMounting");
	}

    override function afterPatching(elem)
    {
        js.Browser.console.log("HelloView afterPatching");
	}
}
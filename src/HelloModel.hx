package;
import coconut.data.Model;

class HelloModel implements Model
{
    @:observable public var status:String;

    @:transition public function test()
    {
        //return @patch {status:"hello"};
        return world()//.next(_ -> @patch {})
        .tryRecover(function(_)
        {
            return @patch {};
        });
    }

    @:transition(return {status:status}) public function world()
    {
        return @patch {status:"hello"};
    }
}


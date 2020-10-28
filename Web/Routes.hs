module Web.Routes where
import IHP.RouterPrelude
import Generated.Types
import Web.Types

-- Generator Marker
instance AutoRoute StaticController

instance AutoRoute PostsController
type instance ModelControllerMap WebApplication Post = PostsController

instance HasPath GuideController where
    pathTo GuideAction = "/Guide/index.html"

instance CanRoute GuideController where
    parseRoute' = do
        string "/Guide"
        optional "/"
        endOfInput
        pure GuideAction
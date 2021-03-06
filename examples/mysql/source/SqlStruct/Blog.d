
module SqlStruct.Blog;
import SqlStruct.User;

import entity;


@Table("blog")
class Blog  {

    mixin MakeEntity;

    @AutoIncrement @PrimaryKey 
    int id;

    string title;
    string content;

    @ManyToOne(FetchType.LAZY)
    @JoinColumn("uid")
    User user;
        
}




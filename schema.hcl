schema "example" {

}

table "users" {
  schema = schema.example
  column "id" {
    type = int
  }
  column "user_name" {
    type   = varchar(255)
  }
  column "emails" {
    type   = varchar(255)
  }
  column "mobile" {
    type = varchar(255)
}
  primary_key {
    columns = [column.id]
  }
}

table "posts" {
  schema = schema.example
  column "id" {
    type = int
  }
  column "user_id" {
    type = int
  }
  column "title" {
    type = varchar(255)
  }
  column "body" {
    type = text
  }
  primary_key {
    columns = [column.id]
  }
  foreign_key "post_author" {
    columns    = [column.user_id]
    ref_columns = [table.users.column.id]
    on_delete = CASCADE
    on_update = NO_ACTION
  }
}

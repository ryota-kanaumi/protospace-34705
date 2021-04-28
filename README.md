__ProtoSpaceのER図__

## usersTable

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| name      | string | NOT NULL    |
| email     | string | NOT NULL    |
| password  | string | NOT NULL    |
| profile   | text   | NOT NULL    |
| occupation| text   | NOT NULL    |
| position  | text   | NOT NULL    |

## PrototypesTable

| Column    | Type       | Options     |
| --------  | -----      | ----------- |
| title     | string     | NOT NULL    |
| catch_copy| text       | NOT NULL    |
| image (ActiveStorageで実装)           |
| user      |references  |             |

## commentsTable

| Column    | Type       | Options     |
| --------  | -----      | ----------  |
| text      | text       | NOT NULL    |
| user      | reference  |             |
| prototype | reference  |             |
drop table items, categories;

create table if not exists categories (
    id serial primary key,
    name varchar(100) not null,
    description text
);

create table if not exists items (
    id serial primary key,
    name varchar(100) not null,
    description text not null,
    category_id integer,
    foreign key (category_id) references categories (id) on delete cascade
);

-- truncate table categories;

insert into categories (name, description) values
    ('electronics', 'Gadgets to make life easier'),
    ('car parts', 'Expensive bits and pieces for your car'),
    ('sports', 'Get out and play!'),
    ('video games', 'Stay in and play!');


    insert into items (name, description, category_id) values
    ('Genshin Impact', 'Awesome open-world RPG', 4),
    ('Lost Ark', 'Popular MMORPG', 4),
    ('Samsung Flip 4', 'Samsung''s flagship phone', 1),
    ('Greg Norman golf clubs', 'Improve your game with these clubs by the Shark himself!', 3)
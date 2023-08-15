// if you add this repo as git submodule, change this to "share.typ/share.typ"
#import "share.typ": *

// load post data from YAML
#let share_data = yaml("example.yml")

#let custom_rules(doc) = {
    // add custom document style rules here

    doc
}

#let share_init(doc) = {
    doc = set_rules(doc)
    doc = custom_rules(doc)

    doc
}

#show: doc => share_init(doc)

#share_header(share_data)
#share_content(share_data)
#share_footer(share_data)

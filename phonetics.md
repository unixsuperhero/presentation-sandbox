in voxcpm you can use a phonetic system to tailor/tweak pronunciation.

### "he" as in "hii"
- `{HE}`
- `{HH IY1 .}`

### "row" as in "hii - ro"
- `{ROW}`
- `{R OW .}`
- `{R OW1 .}`

### hiiro "he ro"

- `{HERO}`
- `{HH IH1 R OW0 .}`
- `{HH IH R OW .}`





hiiro number 1 {HERO}

hiiro number 2 {HH IH R OW0}
hiiro number 3 {HH IH R OW0 .}
hiiro number 4 {HH IH1 R OW0}
hiiro number 5 {HH IH1 R OW0 .}

hiiro number 6 {HH IY R OW0}
hiiro number 7 {HH IY R OW0 .}
hiiro number 8 {HH IY1 R OW0}
hiiro number 9 {HH IY1 R OW0 .}

hiiro number 10 {HH IH R OW1}
hiiro number 11 {HH IH R OW1 .}
hiiro number 12 {HH IH1 R OW1}
hiiro number 13 {HH IH1 R OW1 .}

hiiro number 14 {HH IY R OW1}
hiiro number 15 {HH IY R OW1 .}
hiiro number 16 {HH IY1 R OW1}
hiiro number 17 {HH IY1 R OW1 .}

hiiro number 10 {HH IH R OW0}
hiiro number 10 {HH IH R OW0 .}
hiiro number 10 {HH IH1 R OW0}
hiiro number 10 {HH IH1 R OW0 .}

hiiro number 10 {HH IY R OW0}
hiiro number 10 {HH IY R OW0 .}
hiiro number 10 {HH IY1 R OW0}
hiiro number 10 {HH IY1 R OW0 .}

hiiro number 10 {HH IH R OW1}
hiiro number 10 {HH IH R OW1 .}
hiiro number 10 {HH IH1 R OW1}
hiiro number 10 {HH IH1 R OW1 .}

hiiro number 10 {HH IY R OW1}
hiiro number 10 {HH IY R OW1 .}
hiiro number 10 {HH IY1 R OW1}
hiiro number 10 {HH IY1 R OW1 .}



in ruby, if i have 4 arrays for different combinations.....

let's say:

```ruby
group1 = ['HE', 'HH']
group2 = ['IH', 'IH1', 'IY', 'IY1']
group3 = ['OW0', '0W1']

all_possible_combinations = ...
```

how got i get a collection of every possible combination of those 3 sets.  like:

[
  ['HE', 'IH', 'OW0'],
  ['HE', 'IH', 'OW1'],
  ['HE', 'IH1', 'OW0'],
  ['HE', 'IH1', 'OW1'],
  ['HE', 'IY', 'OW0'],
  ['HE', 'IY', 'OW1'],
  ['HE', 'IY1', 'OW0'],
  ['HE', 'IY1', 'OW1'],
  ['HH', 'IH', 'OW0'],
  ['HH', 'IH', 'OW1'],
  ['HH', 'IH1', 'OW0'],
  ['HH', 'IH1', 'OW1'],
  ['HH', 'IY', 'OW0'],
  ['HH', 'IY', 'OW1'],
  ['HH', 'IY1', 'OW0'],
  ['HH', 'IY1', 'OW1'],
]

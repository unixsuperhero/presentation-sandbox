---
author: unixsuperhero
---

# Concepts that every developer should know

---

# Concepts that every developer should know

- There's one mistake that is very common

---

# Concepts that every developer should know

- There's one mistake that is very common
- It's the main way AI writes code
    - majority of training data

---

...but it's not quite a mistake

---

...but it's not quite a mistake

   because it's actually...

---

# Mindset

---

# Mindset

- they affect how you see the world

---

# Mindset

- they affect how you see the world
- it affects everything

---

# Mindset

- they affect how you see the world
- it affects everything
    - how you understand things
    - how you think and solve problems

---

...so what is this mindset?

---

...so what is this mindset?

   i call it...

---

# Procedural Thinking

---

# Procedural Thinking

- thinking about programming and code as a sequence of tasks or actions

---

finalize order:

```
           [validate params]
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
                  |
                 / \
      ---- no --- 
      v           
[throw error]     
                  
                  
                  
                  
                  
                  
                  
                  
                  
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
                  |
                 / \
      ---- no ---   --- yes --- 
      v                       v          
[throw error]          [get line items]  
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
                  |
                 / \
      ---- no ---   --- yes --- 
      v                       v          
[throw error]          [get line items]  
                              |
                              v
                       [calculate total]
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
                  |
                 / \
      ---- no ---   --- yes --- 
      v                       v          
[throw error]          [get line items]  
                              |
                              v
                       [calculate total]
                              |
                              v
                        [charge card]
```

---

finalize order:

```
           [validate params]
                  |
                  v
             <is valid?>
                  |
                 / \
      ---- no ---   --- yes --- 
      v                       v          
[throw error]          [get line items]  
                              |
                              v
                       [calculate total]
                              |
                              v
                        [charge card]
                              |
                              v
                         [send email]
```

---

# Procedural Thinking

- thinking about programming and code as a sequence of tasks or actions
<br/>
- actively doing stuff

---

# Procedural Thinking

- thinking about programming and code as a sequence of tasks or actions
<br/>
- actively doing stuff
<br/>
- time and place

---

# Procedural Thinking

- thinking about programming and code as a sequence of tasks or actions
<br/>
- actively doing stuff
<br/>
- time and place
<br/>
- data structures and algorithms

---

# Why

---

# Why

- first...it's natural

---

but really...

---

## fundamentals

---

# Fundamentals

- classes/modules (paradigm doesn't matter)
- encapsulation
- interfaces
- abstraction
- levels of abstraction

---

# Fundamentals

- classes/modules (paradigm doesn't matter)
- encapsulation
- interfaces
- abstraction
- levels of abstraction
- **BONUS:** common L takes


---

# Classes

---

# Classes

- not just a box for code

---

# Classes

- not just a box for code
- encapsulating or representing an idea

---

# Classes

- not just a box for code
- encapsulating or representing an idea ...aka a thing

---

# Classes

- not just a box for code
- encapsulating or representing an idea ...aka a thing
- at its core, the data is what give the idea its shape

---

# Classes

more importantly...

- classes are made to be used

---

# Encapsulation

---

# Encapsulation

- a class's attributes (it's data) is precious

---

# Encapsulation

- a class's attributes (it's data) is precious
- other classes should never be access it directly

---

# Encapsulation

- a class's attributes (it's data) is precious
- other classes should never be access it directly
- all interaction should be done via methods

---

# Encapsulation

- a class's attributes (it's data) is precious
- other classes should never be access it directly
- all interaction should be done via methods
- other classes shouldn't know anything about a class except for...

---

# Interface

---

# Interface

- aka it's API

---

# Interface

- aka it's API
- name, inputs, and outputs

---

# Interface

- aka it's API
- name, inputs, and outputs
- interface > implementation

---

# Interface

- aka it's API
- name, inputs, and outputs
- interface > implementation
- **remember:** a class is made to be used

---

...switch to code...

---


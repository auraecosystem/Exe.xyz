type Env struct {
    Posts []Post `expr:"posts"`
}

func (Env) Format(t time.Time) string { // Methods defined on the struct become functions. 
    return t.Format(time.RFC822) 
}

type Post struct {
    Body string
    Date time.Time
}

func main() {
    code := `map(posts, Format(.Date) + ": " + .Body)`
    
    program, err := expr.Compile(code, expr.Env(Env{})) // Pass the struct as an environment.
    if err != nil {
        panic(err)
    }

    env := Env{
        Posts: []Post{
            {"Oh My God!", time.Now()}, 
            {"How you doin?", time.Now()}, 
            {"Could I be wearing any more clothes?", time.Now()},
        },
    }

    output, err := expr.Run(program, env)
    if err != nil {
        panic(err)
    }

    fmt.Print(output)
}

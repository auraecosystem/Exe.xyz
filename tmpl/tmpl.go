type Env struct {
    X int
    Y int
}

program, err := expr.Compile(`X + Y`, expr.Env(Env{}))
if err != nil {
    panic(err)
}

output, err := expr.Run(program, Env{1, 2})
if err != nil {
    panic(err)
}

fmt.Print(output) // 3

output, err = expr.Run(program, Env{3, 4})
if err != nil {
    panic(err)
}

fmt.Print(output) // 7

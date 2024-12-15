package main

import (
	"context"

	"github.com/Chara-X/github"
)

var Ctx = context.Background()
var Registry = github.Registry{
	Path:   "/home/chara-x/daisy/codes/",
	Ignore: []string{"op-aif-wsm", "openpalette-chart-template", "apts", "actions", "opslet", "cp-algorithms", "kubernetes-jenkins", "secretary", "playground"},
}

func Push() { Registry.Push("https://github.com/Chara-X", "main") }
func Pull() { Registry.Pull("https://github.com/Chara-X", "main") }

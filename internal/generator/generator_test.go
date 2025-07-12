package generator

import (
	"math/rand"
	"strings"
	"testing"
)

func TestGenerate(t *testing.T) {
	name := "テスト太郎"
	length := 3

	// テストの再現性を確保するため、固定のシード値を使用
	r := rand.New(rand.NewSource(0))

	result := Generate(name, length, r)

	if result == "" {
		t.Error("生成された文字列が空です")
	}

	if !strings.Contains(result, name) {
		t.Errorf("生成された文字列に指定した名前 '%s' が含まれていません", name)
	}

	// greeting + body(length) + closing で改行は length + 1 個
	expectedNewlines := length + 1
	if strings.Count(result, "\n") != expectedNewlines {
		t.Errorf("期待される改行の数（%d）と異なります: %d", expectedNewlines, strings.Count(result, "\n"))
	}
}
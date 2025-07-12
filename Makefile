# Makefile for poponchu-cli

# --- Variables ---
BINARY_NAME=poponchu-cli
CMD_PATH=./cmd/poponchu-cli

# Go Linter (golangci-lint)
GOLANGCILINT_VERSION=latest
GOLANGCILINT_BINARY=$(CURDIR)/bin/golangci-lint

# --- Targets ---

.PHONY: all build test lint clean help

all: build

build:
	@echo "Building $(BINARY_NAME)..."
	go build -o $(BINARY_NAME) $(CMD_PATH)
	@echo "$(BINARY_NAME) built successfully."

test:
	@echo "Running tests..."
	go test -v ./...

lint: $(GOLANGCILINT_BINARY)
	@echo "Running linter..."
	$(GOLANGCILINT_BINARY) run

clean:
	@echo "Cleaning up..."
	rm -f $(BINARY_NAME)
	rm -rf $(CURDIR)/bin

help:
	@echo "Available commands:"
	@echo "  build    Build the application into a single binary."
	@echo "  test     Run all tests."
	@echo "  lint     Run linter (installs golangci-lint if not present)."
	@echo "  clean    Remove build artifacts and installed tools."
	@echo "  help     Show this help message."

# --- Tooling ---

# Installs golangci-lint into the local ./bin directory
$(GOLANGCILINT_BINARY):
	@echo "golangci-lint not found. Installing..."
	@mkdir -p $(CURDIR)/bin
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(CURDIR)/bin $(GOLANGCILINT_VERSION)
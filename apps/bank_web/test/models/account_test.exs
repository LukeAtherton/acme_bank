defmodule BankWeb.AccountTest do
  use BankWeb.ModelCase

  alias BankWeb.Account

  @valid_attrs %{type: "liability", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Account.changeset(%Account{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Account.changeset(%Account{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule Telephonist.Mixfile do
  use Mix.Project

  def project do
    [app: :telephonist,
     version: "1.0.0",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps
    ]
  end

  def application do
    [applications: [:logger,
                    :httpotion,
                    :cowboy,
                    :plug,
                    :ex_twiml,
                    :pagexduty
                   ],
     mod: {Telephonist, []}
    ]
  end

  defp deps do
    [{:httpotion, "~> 3.0.0"},
     {:pagexduty, "~> 0.1.0"},
     {:ex_twiml, "~> 2.1.0"},
     {:cowboy, "~> 1.0.0"},
     {:plug, "~> 1.0"}
    ]
  end
end

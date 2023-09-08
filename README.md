# Superhero Powers API

This is a Ruby on Rails API that allows you to manage superheroes and their superpowers.


## Getting Started

This API allows you to create, read, and manage superheroes and their superpowers.

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Ruby 2.7.4
- Rails 6.0+


### Installation

To get started, follow these steps:

 Clone the repository:

   ```
   git clone https://github.com/your-username/superhero-powers-api.git
   ```
   ```
   cd superhero-powers-api
    ```
    1. Install dependencies:

    ```
    bundle install

    ```
    2. Create and migrate the database:
    ```
    rails db:create db:migrate

    ```
    Usage

To use this API, you can make HTTP requests to the provided endpoints. Here's how you can interact with the API:
API Endpoints
GET /heroes

    Description: Retrieve a list of superheroes.
    Endpoint: /heroes
    Example Response:
    ```
    [
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel"
  },
  {
    "id": 2,
    "name": "Doreen Green",
    "super_name": "Squirrel Girl"
  },
  {
    "id": 3,
    "name": "Gwen Stacy",
    "super_name": "Spider-Gwen"
  }
]

    ```
    GET /heroes/:id

    Description: Retrieve a superhero by ID.
    Endpoint: /heroes/:id
    Example Response (if found):
    ```
    {
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}

    ```
    POST /hero_powers

    Description: Create a new hero power association.
    Endpoint: /hero_powers
    Example Request Body:
    ```
    {
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}

    ```
    GET /powers

    Description: Retrieve a list of superpowers.
    Endpoint: /powers
    Example Response:
    ```
    [
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 2,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]

    ```
    GET /powers/:id

    Description: Retrieve a superpower by ID.
    Endpoint: /powers/:id
    Example Response (if found):
    ```
    {
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}

    ```
    PATCH /powers/:id

    Description: Update an existing superpower.
    Endpoint: /powers/:id
    Example Request Body:
    ```
    {
  "description": "Updated description"
}

    ```
    Contributing

Contributions are welcome! To contribute to this project, follow these steps:

    Fork the repository
    Create your feature branch: git checkout -b feature/my-feature
    Commit your changes: git commit -m 'Add some feature'
    Push to the branch: git push origin feature/my-feature
    Create a pull request
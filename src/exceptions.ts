export class CredentialsError extends Error {
  constructor(message = "Credentials are missing or invalid") {
    super(message);
    this.name = "CredentialsError";
  }
}

// Exception that indicates an error occurred while making a request to the ASW API.
export class AswApiError extends Error {
  constructor(message = "ASW API request failed") {
    super(message);
    this.name = "AswApiError";
  }
}

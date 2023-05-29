from locust import HttpUser, task, between

class FastAPIUser(HttpUser):
    wait_time = between(1, 2.5)

    @task
    def get_root(self):
        self.client.get("/")

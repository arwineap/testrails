require 'net/http'
require 'json'

class Testrails

    def initialize(api_url, project_id, user, pass)
        @api_url = api_url
        @user = user
        @pass = pass
        @project_id = project_id
    end

    def get_run(run_id)
        return req("/api/v2/get_run/#{run_id}")
    end

    def get_plan(plan_id)
        return req("/api/v2/get_plan/#{plan_id}")
    end

    def get_runs()
        return req("/api/v2/get_runs/#{@project_id}")
    end

    def get_plans()
        return req("/api/v2/get_runs/#{@project_id}")
    end

    private

    def req(url)
        http = Net::HTTP.new(URI.parse(@api_url).host, URI.parse(@api_url).port)
        http.use_ssl = true
        request = Net::HTTP::Get.new("#{@api_url}/index.php?#{url}")
        request['Content-Type'] = 'application/json'
        request.basic_auth(@user, @pass)
        response = http.request(request)
        return JSON.parse(response.body)
    end

end

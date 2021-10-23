import axios from "axios";

const setAxiosHeaders = () => {
    const csrfToken = document.querySelector('[name=csrf-token]')
    if (!csrfToken) {
        return
    }
    const csrfTokenContent = csrfToken.content
    csrfTokenContent && (axios.defaults.headers.common['X-CSRF-TOKEN'] = csrfTokenContent)
}

const HttpRequester = (action, url) => {
    setAxiosHeaders()
    axios.get('/api/v1/' + url)
        .then(resp => action(resp.data))
        .catch(resp => console.log(resp));
}

export default HttpRequester
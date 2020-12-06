package filter;

import java.io.IOException;
import javax.servlet.*;

public class EncodingFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterchain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		filterchain.doFilter(request,response);
	}

	@Override
	public void destroy() {

	}
}

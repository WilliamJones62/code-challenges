# frozen_string_literal: true

require 'hard/vertex_covering'

# The input parameter is an array of 3 strings. The first string is a list of
# vertices in a graph in the form (A,B,C,...), the second string is the edges
# connecting the vertices in the form (A-B,C-D,...) where each edge is
# bidirectional. The last string is a set of vertices in the form (X,Y,Z,...)
# and the program will have to determine whether or not the last set of vertices
# given covers every edge in the graph such that every edge is incident to at
# least one vertex in the set.
#
# For example: if the array is ["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(A,B)"] then the
# vertices (A,B) are endpoints of every edge in the graph, so every edge has been
# accounted for. Therefore the program should return the string yes. But if the
# last part of the array was (C,B) then these vertices don't cover all the edges
# because the edge connecting A-D is not covered. In this case the program should
# return the edges given in the second part of the array that are left out in the
# same order they were listed, so for this example the program should return (A-D).
#
# The graph will have at least 2 vertices and all the vertices in the graph
# will be connected. The third part of the array listing the vertices may be
# empty, where it would only contain the parenthesis with no values within it:
# "()"

describe VertexCovering do
  let(:vc) { described_class.new }

  describe 'vertex_covering' do
    it "returns 'yes' for ['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(A,B)']" do
      expect(vc.vertex_covering(['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(A,B)'])).to eq('yes')
    end

    it "returns '(A-D)' for ['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C,B)']" do
      expect(vc.vertex_covering(['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C,B)'])).to eq('(A-D)')
    end

    it "returns '(A-B,A-D,B-D)' for ['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C)']" do
      expect(vc.vertex_covering(['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C)'])).to eq('(A-B,A-D,B-D)')
    end

    it "returns 'yes' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z)', '(Z,Y,Q)']" do
      expect(vc.vertex_covering(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z)', '(Z,Y,Q)'])).to eq('yes')
    end

    it "returns '(Y-Q,Y-Z)' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(X)']" do
      expect(vc.vertex_covering(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(X)'])).to eq('(Y-Q,Y-Z)')
    end

    it "returns '(X-Y,Y-Z)' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Q)']" do
      expect(vc.vertex_covering(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Q)'])).to eq('(X-Y,Y-Z)')
    end

    it "returns '(X-Y,Y-Q,Y-Z,X-Q)' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '()']" do
      expect(vc.vertex_covering(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '()'])).to eq('(X-Y,Y-Q,Y-Z,X-Q)')
    end

    it "returns 'yes' for ['(A,B,C,D,E,F)','(A-B,A-D,B-D,B-C,C-F,E-D)','(D,B,F)']" do
      expect(vc.vertex_covering(['(A,B,C,D,E,F)', '(A-B,A-D,B-D,B-C,C-F,E-D)', '(D,B,F)'])).to eq('yes')
    end

    it "returns '(A-D,E-D)' for ['(A,B,C,D,E,F,G)','(A-B,A-D,B-D,B-C,C-F,E-D,F-E,G-F)','(B,F)']" do
      expect(vc.vertex_covering(['(A,B,C,D,E,F,G)', '(A-B,A-D,B-D,B-C,C-F,E-D,F-E,G-F)', '(B,F)'])).to eq('(A-D,E-D)')
    end
  end
end

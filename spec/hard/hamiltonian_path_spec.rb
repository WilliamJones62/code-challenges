# frozen_string_literal: true

require 'hard/hamiltonian_path'

#  An array parameter contains 3 strings. The first string is a list of nodes in a graph in
#  the form (A,B,C,...), the second string is the edges connecting the nodes in the form
#  (A-B,C-D,...) where each edge is bidirectional. The last string is a set of nodes in the
#  form (X,Y,Z,...) and the program determines if the set of nodes forms a Hamiltonian
#  path on the graph which means that every node in the graph is visited only
#  once in the order given.

describe HamiltonianPath do
  let(:hp) { described_class.new }

  describe 'hamiltonian_path' do
    it "returns 'yes' for ['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C,A,D,B)']" do
      expect(hp.hamiltonian_path(['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(C,A,D,B)'])).to eq('yes')
    end

    it "returns 'B' for ['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(D,A,B,C)']" do
      expect(hp.hamiltonian_path(['(A,B,C,D)', '(A-B,A-D,B-D,A-C)', '(D,A,B,C)'])).to eq('B')
    end

    it "returns 'yes' for ['(A,B,C)', '(B-A,C-B)', '(C,B,A)']" do
      expect(hp.hamiltonian_path(['(A,B,C)', '(B-A,C-B)', '(C,B,A)'])).to eq('yes')
    end

    it "returns 'Q' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z)', '(Z,Y,Q,X)']" do
      expect(hp.hamiltonian_path(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z)', '(Z,Y,Q,X)'])).to eq('Q')
    end

    it "returns 'yes' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Z,Y,Q,X)']" do
      expect(hp.hamiltonian_path(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Z,Y,Q,X)'])).to eq('yes')
    end

    it "returns 'Z' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Q,Y,Z,X)']" do
      expect(hp.hamiltonian_path(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z)', '(Q,Y,Z,X)'])).to eq('Z')
    end

    it "returns 'yes' for ['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Q,X,Y,Z)']" do
      expect(hp.hamiltonian_path(['(X,Y,Z,Q)', '(X-Y,Y-Q,Y-Z,X-Q)', '(Q,X,Y,Z)'])).to eq('yes')
    end

    it "returns 'yes' for ['(A,B,C,D,E,F)', '(A-B,A-D,B-D,B-C,C-F,E-D)', '(F,C,B,A,D,E)']" do
      expect(hp.hamiltonian_path(['(A,B,C,D,E,F)', '(A-B,A-D,B-D,B-C,C-F,E-D)', '(F,C,B,A,D,E)'])).to eq('yes')
    end

    it "returns 'E' for ['(A,B,C,D,E,F)', '(A-B,A-D,B-D,B-C,C-F,E-D)', '(E,F,C,B,D,A)']" do
      expect(hp.hamiltonian_path(['(A,B,C,D,E,F)', '(A-B,A-D,B-D,B-C,C-F,E-D)', '(E,F,C,B,D,A)'])).to eq('E')
    end

    it "returns 'C' for ['(A,B,C,D,E,F,G)', '(A-B,A-D,B-D,B-C,C-F,E-D,F-E,G-F)', '(G,F,E,D,B,C,A)']" do
      expect(hp.hamiltonian_path(['(A,B,C,D,E,F,G)', '(A-B,A-D,B-D,B-C,C-F,E-D,F-E,G-F)',
                                  '(G,F,E,D,B,C,A)'])).to eq('C')
    end
  end
end

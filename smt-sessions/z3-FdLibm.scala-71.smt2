; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!639 () Bool)

(assert start!639)

(declare-fun res!1312 () Bool)

(declare-fun e!854 () Bool)

(assert (=> start!639 (=> (not res!1312) (not e!854))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!639 (= res!1312 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!639 e!854))

(assert (=> start!639 true))

(declare-datatypes ((array!72 0))(
  ( (array!73 (arr!32 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!32 (_ BitVec 32))) )
))
(declare-fun q!70 () array!72)

(declare-fun array_inv!12 (array!72) Bool)

(assert (=> start!639 (array_inv!12 q!70)))

(declare-fun b!1521 () Bool)

(declare-fun res!1313 () Bool)

(assert (=> b!1521 (=> (not res!1313) (not e!854))))

(declare-fun qInv!0 (array!72) Bool)

(assert (=> b!1521 (= res!1313 (qInv!0 q!70))))

(declare-fun b!1522 () Bool)

(assert (=> b!1522 (= e!854 (or (bvslt jz!42 #b00000000000000000000000000000000) (bvsge jz!42 (size!32 q!70))))))

(assert (= (and start!639 res!1312) b!1521))

(assert (= (and b!1521 res!1313) b!1522))

(declare-fun m!1827 () Bool)

(assert (=> start!639 m!1827))

(declare-fun m!1829 () Bool)

(assert (=> b!1521 m!1829))

(check-sat (not start!639) (not b!1521))
(check-sat)
(get-model)

(declare-fun d!819 () Bool)

(assert (=> d!819 (= (array_inv!12 q!70) (bvsge (size!32 q!70) #b00000000000000000000000000000000))))

(assert (=> start!639 d!819))

(declare-fun d!821 () Bool)

(declare-fun res!1316 () Bool)

(declare-fun e!858 () Bool)

(assert (=> d!821 (=> (not res!1316) (not e!858))))

(assert (=> d!821 (= res!1316 (= (size!32 q!70) #b00000000000000000000000000010100))))

(assert (=> d!821 (= (qInv!0 q!70) e!858)))

(declare-fun b!1525 () Bool)

(declare-fun lambda!52 () Int)

(declare-fun all20!0 (array!72 Int) Bool)

(assert (=> b!1525 (= e!858 (all20!0 q!70 lambda!52))))

(assert (= (and d!821 res!1316) b!1525))

(declare-fun m!1831 () Bool)

(assert (=> b!1525 m!1831))

(assert (=> b!1521 d!821))

(check-sat (not b!1525))
(check-sat)

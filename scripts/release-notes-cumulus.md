# Cumulus v0.9.11
This release contains the changes between v0.9.10 and v0.9.11.


<hr/>
⚠️ This version is a pre-release ⚠️
<hr/>

## Priority Upgrade:
            
- ✅ trivial [`#9692`](https://github.com/paritytech/substrate/pull/9692) ❗️HIGH - Fixed block response limit check


## Runtimes
- Kusama:
    - Metadata: `V14`
    - Size: `1.14 MB`
    - Version: `kusama-9111 (parity-kusama-0.tx7.au2)`
    - Proposal hash: `0x85b3f283e7f403acc12ce89005f72ccf8d1eb4ff2eab4870f7d345b76c56fb5d`

- Polkadot:
    - Metadata: `V14`
    - Size: `893.08 KB`
    - Version: `polkadot-9110 (parity-polkadot-0.tx8.au0)`
    - Proposal hash: `0x791e698f3690481e0eb16d35017cf3bb27ec095ec6f27dafd3a230b76dc42f86`



## Rust compiler version

This release was tested against the following versions of `rustc`. Other versions may work.

- Rust Stable: `1.55.0 (c8dfcfe04 2021-09-06)`
- Rust Nightly: `1.57.0-nightly (51e514c0f 2021-09-12)`



## Client Changes

- ✅ trivial [`#9692`](https://github.com/paritytech/substrate/pull/9692) ❗️HIGH - Fixed block response limit check

-  [`#9971`](https://github.com/paritytech/substrate/pull/9971) 📌 Low - Use correct db path for parity-db

-  [`#5920`](https://github.com/paritytech/substrate/pull/5920)  - Integrate wasmer into substrate sandbox environment

- ✅ trivial [`#9459`](https://github.com/paritytech/substrate/pull/9459)  - Add `childstate_getstorageentries` rpc

- ✅ trivial [`#9525`](https://github.com/paritytech/substrate/pull/9525)  - Make choosing an executor (native/wasm) an explicit part of service construction

-  [`#9562`](https://github.com/paritytech/substrate/pull/9562)  - Simplify `nativeexecutiondispatch` and remove the `native_executor_instance!` macro

-  [`#9617`](https://github.com/paritytech/substrate/pull/9617)  - Fix `state_subscriberuntimeversion` for parachains

- ✅ trivial [`#9645`](https://github.com/paritytech/substrate/pull/9645)  - Store the database in a role specific subdirectory

-  [`#9737`](https://github.com/paritytech/substrate/pull/9737)  - Use tokio runtime handle instead of `taskexecutor` abstraction

- ✅ trivial [`#9788`](https://github.com/paritytech/substrate/pull/9788)  - `follow-chain` testing mode for try-runtime (and revamp cli configs). 

## Runtime Changes

- ✅ audtited [`#3784`](https://github.com/paritytech/polkadot/pull/3784) ❗️HIGH - Don't drop ump queue items if weight exhausted

- ✅ audtited [`#9202`](https://github.com/paritytech/substrate/pull/9202) 📌 Low - Pallet-vesting: support multiple, merge-able vesting schedules

- ✅ audtited [`#9834`](https://github.com/paritytech/substrate/pull/9834) 📌 Low - Rework transaction priority calculation

- ⏳ pending non-critical audit [`#9125`](https://github.com/paritytech/substrate/pull/9125)  - Implement a `countedstoragemap`

- ⏳ pending non-critical audit [`#9428`](https://github.com/paritytech/substrate/pull/9428)  - Generate storage info for pallet authority_discovery

- ✅ audtited [`#9507`](https://github.com/paritytech/substrate/pull/9507)  - Implement `pallet-bags-list` and its interfaces with `pallet-staking`

- ✅ trivial [`#9517`](https://github.com/paritytech/substrate/pull/9517)  - Custom benchmark errors and override

- ✅ trivial [`#9550`](https://github.com/paritytech/substrate/pull/9550)  - Stabilize `seal_debug_message`

- ✅ trivial [`#9580`](https://github.com/paritytech/substrate/pull/9580)  - Emit log on runtime code change.

- ✅ trivial [`#9619`](https://github.com/paritytech/substrate/pull/9619)  - Make system events private from the runtime

- ✅ trivial [`#9641`](https://github.com/paritytech/substrate/pull/9641)  - Add votelocking config

- ⏳ pending non-critical audit [`#9647`](https://github.com/paritytech/substrate/pull/9647)  - Use the precise number of approvals when constructing raworgin::members

- ✅ trivial [`#9669`](https://github.com/paritytech/substrate/pull/9669)  - Contracts: remove state rent

- ✅ trivial [`#9686`](https://github.com/paritytech/substrate/pull/9686)  - Implemented `seal_ecdsa_recovery` function in the contract pallet

- ⏳ pending non-critical audit [`#9711`](https://github.com/paritytech/substrate/pull/9711)  - Migrate `pallet-tips` to the new pallet attribute macro

- ✅ trivial [`#9844`](https://github.com/paritytech/substrate/pull/9844)  - Fungibles and non-fungibles create and destroy traits + assets and uniques implementation

- ✅ trivial [`#9866`](https://github.com/paritytech/substrate/pull/9866)  - Fix amount emitted in rebonded event

- ✅ trivial [`#2815`](https://github.com/paritytech/polkadot/pull/2815)  - Xcm v1

- ✅ audtited [`#3404`](https://github.com/paritytech/polkadot/pull/3404)  - Ensure multilocation always has a canonical representation

-  [`#3543`](https://github.com/paritytech/polkadot/pull/3543)  - Do not expire hrmp open channel requests

- ✅ audtited [`#3575`](https://github.com/paritytech/polkadot/pull/3575)  - Ump: support overweight messages

- ✅ audtited [`#3621`](https://github.com/paritytech/polkadot/pull/3621)  - More standard staking miner deposits

-  [`#3629`](https://github.com/paritytech/polkadot/pull/3629)  - Xcm v2: scripting, query responses, exception handling and error reporting

- ⏳ pending non-critical audit [`#3683`](https://github.com/paritytech/polkadot/pull/3683)  - New proxy for auctions + crowdloans + registrar + slots

- ✅ audtited [`#3693`](https://github.com/paritytech/polkadot/pull/3693)  - Xcm: introduce versioning to dispatchables' params

-  [`#3727`](https://github.com/paritytech/polkadot/pull/3727)  - Xcm: allow reclaim of assets dropped from holding

-  [`#3736`](https://github.com/paritytech/polkadot/pull/3736)  - Xcm: automatic version negotiation

- ✅ trivial [`#3752`](https://github.com/paritytech/polkadot/pull/3752)  - Allow staking miner to use different election algorithms

- ✅ trivial [`#3988`](https://github.com/paritytech/polkadot/pull/3988)  - Tidy up xcm errors in preparation for v2.

## Other Changes

-  [`#3613`](https://github.com/paritytech/polkadot/pull/3613) 📌 Low - Ci: rustdoc

- ✅ trivial [`#3658`](https://github.com/paritytech/polkadot/pull/3658) 📌 Low - Removed unneeded deps

-  [`#3661`](https://github.com/paritytech/polkadot/pull/3661) 📌 Low - Provide dummy dispute coordinator by default.

-  [`#3676`](https://github.com/paritytech/polkadot/pull/3676) 📌 Low - Bypass chain-selection subsystem until disputes are enabled.

-  [`#3672`](https://github.com/paritytech/polkadot/pull/3672)  - Demote warnings due to disconnected dispute coordinator

-  [`#3680`](https://github.com/paritytech/polkadot/pull/3680)  - Staking-miner: remove need of a file to pass the seed

- ✅ trivial [`#3813`](https://github.com/paritytech/polkadot/pull/3813)  - Put all authorities of a session into `sessioninfo`.

- ✅ audtited [`#3815`](https://github.com/paritytech/polkadot/pull/3815)  - Add parachains pallets to polkadot runtime

- ✅ trivial [`#3828`](https://github.com/paritytech/polkadot/pull/3828)  - Dockerfiles: upgrade to ubuntu:20.04; some chore


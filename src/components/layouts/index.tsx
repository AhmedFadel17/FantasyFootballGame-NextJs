
import Navbar from './Navbar';
import Footer from './Footer';
import Sidebar from './Sidebar';
type LayoutProps = {
  children: React.ReactNode;
  hideSidebar?: boolean;
};
export default function Layout({ children, hideSidebar }: LayoutProps) {
  return (
    <>
      <Navbar />
      <div className="flex min-h-screen">
        {/* Sidebar */}
        {!hideSidebar &&
          <div className="w-16">
            <Sidebar />
          </div>
        }


        {/* Content Area */}
        <main className="flex-1">
          {children}
        </main>
      </div>
      <Footer />
    </>
  )
}
